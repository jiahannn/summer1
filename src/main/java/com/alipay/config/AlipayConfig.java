package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016092300576222";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCsoAtar2B0zzDZYQ92tKMLD7ix37are52SbHRda+vgjnZwXRI6FNblZKAwDfCetjpROaatf53+bDv6AxTd8HpS5+MPBAcjo9dBxouoP/BXdQCD4AITP8utR6JFEUpXCmYFtiO5qjcB3dC7P0AHkfYGbJepffnd9STIZknLJpBgQ7z9VRo5vtw975Qz1DG3eUjm5Q6yqtDUjkbv3CTbUp63GqJmpmPkUxYXeMgXte4lZ24aMAAbMqLsX54QOemu+KjF+eIJIPMMXTMeolhg1i1xCxWMhfqpqSQ/RBcwRkqchwiJjCT9M/ICYvZnl10H+zy5bFAChjqZFyp2APh14k+TAgMBAAECggEAT68hDp9d+w2ZEv8G0FjZ2kVLkHAgNlA9kFWX8XfbzjB047FStJTiDcnBV+1XYSvlB5GBKx15pPP5S5MYkspq7NI1sby+Pulmd+palTPOkdBkiHti+de9ASPL9+3fTwZxybkmDJJSCf6GV6j+uX/a/WQrLgYEzTxX2lm9PpVyl7xoGYYOdbtmWLC3Aidq5Leq2ZjKam0EDraBuvMSGYkAvtu3fzNOSJEnlRNc73jE5QdOGfNlX57hgHUCC7IjMcqxReEaTWaeDEPBbwTFmIry6Lf4v5s0rKYpgmMbmNVx3/Vwh45Frr+DMeqNQzHr8Awrfn8O+vQqmmB3oRVbRtzoQQKBgQD5ZjgeiU+ejaO0q5omuAYVHodoqKxvChCzFmnjcy9DkXPEwL5AUqpOY8CFW5ZXQ/mMN1s0NVI60rflvW7/8caIM40kAxasWPcbm1x32As0D9RHU20X3j86TzHWWjI7QtZAJlooWesArAhXgKkRFmxc5tEpyI6gaaOZuKPOcxG7uQKBgQCxMaZGXKR8Gv8ShK+XeFZD2aprA1SKYNN7iJMDL+wpseJi4wxYReBKixwhz0R7T/HMnkY67lYxET1HDwZ/Ji3wGGmxv8MHWEu+MhWabARAVH8PjiBUj/NsjnIQIMY32xE25WN/WqKGS3CYfWWFKmPBKrGC0f2DP4Dz3sxjjWzDqwKBgQDkpO0gObyP3MTP118MzjttUz7LGZB0gGLM/Oh5CNm09X2QTTBeoirWkScoW84aFQyMmxd3ZscLfLHx4tkHtu3PYousD1TTDwEFA0sj6CJlSXnRJk/myO9oksBbBvf0UpM/3qlbQwxq4k0Hg8H8E3WnOklaKC9yK0c8oAU1OVNxqQKBgQCQQ+oqs1bALIKsIxeLbVBe4aMciZOVLoxAsctv9t6Ce+/jrxPn8sxQJL580HHjLA2kGOD5Lf9C59RKPHN/pigUqOu06nnxSvQwIDryhStY7PKeSYsNDj6Ujc1UUDrSUyvK1CyUDcjxKg68OKwlJYQeS5JG/o03BMcKxsUF8KkzDQKBgCLkITSjSNjeo0mIbiNZxjGc1z/yQL4KIyQ43GLiwyww8Iwzxx7yvM9zMks+CLsReQ9PUVXqGS/410mASphN5ei3tRpJDYH5bh9HJ75/Ic4K7BKlTVYhiQrrqY2QlSOUOTgucKS6RO94K/at1JD4pOjFL7J53+eM30Dj0l/Kboy6";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmztfvol7ObjGs3ocjKmtqA6u1mJAYSUl5bfSeO0MqCHdc1mu5xKGRbzXaYPLzvXAvTibpyePS+tb4zhSbi6X2hIGMlJS31IbKW2uGDF4Tpem66/AonTLfyxBXJgFf1B6nS9kY78rnYLgsyIUdomi6dWJa6tPbTgcjRzZa41hXFE2/A8iYWWVPa384QB8cxURFfoZZNTwQMj69gb++K8eWNZuVDD2Mmd5EO4h5Rxw/wLqTz/pcrS59km/i7Z4h7oIBazrGGEY7zEkpAONFwbPqlmOMkLdw1BqKmQXKAjvruFr9zBwF62Dqsnnb/A+L7f2b5vlU0trEsw+YQIiD2zFYwIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://127.0.0.1:8080/am_project/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://127.0.0.1:8080/am_project/return_url.jsp";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

