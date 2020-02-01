package com.sys.utils;

/**
 * 判断String类型的参数是否非空
 * @author Zengzi
 *
 */
public class StringUtils {
	private StringUtils(){
		
	}
	
	/**
	 * 判断传入的 vlaue是否有长度（不空）
	 * @param value
	 * @return  有长度返回true  否则返回 false
	 */
	public static boolean hasLength(String value){
		return value !=null && !"".equals(value.intern());
	}
}
