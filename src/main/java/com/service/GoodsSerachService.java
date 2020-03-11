package com.service;

import java.io.IOException;



import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.apache.lucene.analysis.cn.smart.SmartChineseAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.FloatDocValuesField;
import org.apache.lucene.document.FloatPoint;
import org.apache.lucene.document.IntPoint;
import org.apache.lucene.document.StoredField;
import org.apache.lucene.document.TextField;
import org.apache.lucene.document.Field.Store;
import org.apache.lucene.index.DirectoryReader;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.index.Term;
import org.apache.lucene.search.BooleanQuery;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.Sort;
import org.apache.lucene.search.SortField;
import org.apache.lucene.search.SortField.Type;
import org.apache.lucene.search.TermQuery;
import org.apache.lucene.search.BooleanClause.Occur;
import org.apache.lucene.search.TopDocs;
import org.apache.lucene.search.highlight.Formatter;
import org.apache.lucene.search.highlight.Highlighter;
import org.apache.lucene.search.highlight.InvalidTokenOffsetsException;
import org.apache.lucene.search.highlight.QueryScorer;
import org.apache.lucene.search.highlight.SimpleHTMLFormatter;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



import com.dao.GoodsDAO;
import com.pojo.MakeUP;


@Service
public class GoodsSerachService {
	
//	@Autowired
//	private GoodsDAO goodsDAO;
	
	//分词器
	private SmartChineseAnalyzer analyzer = new SmartChineseAnalyzer();
	private Directory directory = null;

	public GoodsSerachService() {
		try {
			//索引建在内存中
			directory = FSDirectory.open(Paths.get("d:/temp/two"));
		} catch (IOException e) {
		}
	}


	// 创建索引
	 public void addIndex(MakeUP goods) throws IOException {
	 
	 IndexWriterConfig config = new IndexWriterConfig(analyzer);
	 IndexWriter indexWriter = new IndexWriter(directory, config);
	 //创建document对象，并添加Filed域属性
	 Document document = new Document();
	 Field goodsid = new IntPoint("goodsid", goods.getGoodsid());
	 Field goodsid1 = new StoredField("goodsid", goods.getGoodsid());
	 document.add(goodsid);
	 document.add(goodsid1);
	
	 Field goodsname = new TextField("goodsname", goods.getGoods_name(),
	 Store.YES);
	 document.add(goodsname);
	
	 Field goodsname1 = new TextField("goodsname1", goods.getGoods_name1(), Store.YES);
	 document.add(goodsname1);
	 
	 Field goodspicture = new TextField("goodspicture", goods.getGoods_picture(), Store.YES);
	 document.add(goodspicture);
	 
	 Field goodsdesc = new TextField("goodsdesc", goods.getGoods_desc(), Store.YES);
	 document.add(goodsdesc);
	 
	 Field goodstype = new TextField("goodstype", goods.getGoodstype(),Store.YES);
	 document.add(goodstype);
	
	 Field goodsprice = new FloatPoint("goodsprice", goods.getGoods_price());
	 Field goodsprice1 = new StoredField("goodsprice", goods.getGoods_price());
	 Field goodsprice2 = new FloatDocValuesField("goodsprice", goods.getGoods_price());
	 document.add(goodsprice);
	 document.add(goodsprice1);
	 document.add(goodsprice2);
	
	 indexWriter.addDocument(document);

	 indexWriter.close();
	
	 }

	/**
	 * 删除索引
	 * 
	 * @throws IOException
	 * */

	public void delIndate(int goodsid) throws IOException {
		IndexWriterConfig config = new IndexWriterConfig(analyzer);
		IndexWriter indexWriter = new IndexWriter(directory, config);
		Query query = IntPoint.newExactQuery("goodsid", goodsid);
		indexWriter.deleteDocuments(query);
		indexWriter.close();

	}

	/**
	 * 修改索引
	 * 
	 * @throws IOException
	 */

	public void update(MakeUP goods) throws IOException {
		delIndate(goods.getGoodsid());
		addIndex(goods);
	}

	/**
	 * 
	 * @param keyword
	 *            要搜的关键字
	 * @param minPrice
	 *            最小价格
	 * @param maxPrice
	 *            最大价格
	 * @param sort
	 *            排序
	 * @param page
	 *            第几页
	 * @param size
	 *            页大小
	 * @return
	 * @throws IOException
	 * @throws InvalidTokenOffsetsException
	 */

	public List search(String keyword, boolean desc, int page, int size) 
			throws IOException, InvalidTokenOffsetsException {
		
		DirectoryReader directoryReader = DirectoryReader.open(directory);
		IndexSearcher indexSearcher = new IndexSearcher(directoryReader);
		
//		SmartChineseAnalyzer analyzer = new SmartChineseAnalyzer();
		// 名称
		Query query1 = new TermQuery(new Term("goodsname", keyword));
		// 详情
		Query query2 = new TermQuery(new Term("goodsdesc", keyword));
		Query query3 = new TermQuery(new Term("goodstype",keyword));
		// 价格区间
//		Query query3 = FloatPoint.newRangeQuery("goodsprice", minprice, maxprice);

		BooleanQuery.Builder builder = new BooleanQuery.Builder();
		builder.add(query1, Occur.SHOULD);   //occur.should表示对应字段应该存在查询值
		builder.add(query2, Occur.SHOULD);
//		builder.add(query3, Occur.SHOULD);
		Query query = builder.build();

		// 排序
		SortField sortField = new SortField("goodsprice", Type.FLOAT, desc); // true降序
		Sort sort = new Sort(sortField);
		TopDocs topDocs = indexSearcher.search(query, 1000, sort);

		// 分页
		int start = (page - 1) * size;
		long end = start + size;
		if (end > topDocs.totalHits) {
			end = topDocs.totalHits;
		}
		List list = new ArrayList();
		ScoreDoc[] scoreDocs = topDocs.scoreDocs;

		// 高亮显示用html标签加<font color=red>
		Formatter formatter = new SimpleHTMLFormatter("<font color='red'>","</font>");
		QueryScorer queryScorer = new QueryScorer(query);
		Highlighter highlighter = new Highlighter(formatter, queryScorer);

		for (int i = start; i < end; i++) {
			MakeUP goods = new MakeUP();
			int docid = scoreDocs[i].doc;
			Document document = indexSearcher.doc(docid);
			goods.setGoodsid(Integer.parseInt(document.get("goodsid")));
			goods.setGoods_name(document.get("goodsname"));
			goods.setGoods_desc(document.get("goodsdesc"));
			goods.setGoods_name1(document.get("goodsname1"));
			goods.setGoods_picture(document.get("goodspicture"));
			goods.setGoodstype(document.get("goodstype"));
			goods.setGoods_price(Float.parseFloat(document.get("goodsprice")));
			
			String desc1 = highlighter.getBestFragment(analyzer, "goodsname",document.get("goodsname"));
		//	String desc2 = highlighter.getBestFragment(analyzer, "goodsdesc",document.get("goodsdesc"));
//			String desc3 = highlighter.getBestFragment(analyzer, "goodstype", document.get("goodstype"));
			goods.setKeyword(desc1);
	//		goods.setKeyword(desc2);
//			goods.setKeyword(desc3);

			list.add(goods);

		}
		return list;
	}

}
