package com.singbon.device;

/**
 * 读卡机命令码
 * 
 * @author 郝威
 * 
 */
public class CardReaderCommandCode {

	/**
	 * 获取出纳卡基本信息 0x70
	 */
	public static byte CashierCardBaseInfo = 0x70;
	/**
	 * 单个发卡 0x01
	 */
	public static byte SingleCard = 0x01;
	/**
	 * 信息发卡 0x02
	 */
	public static byte InfoCard = 0x02;
	/**
	 * 解挂 0x03
	 */
	public static byte Unloss = 0x03;
	/**
	 * 补卡 0x04
	 */
	public static byte RemakeCard = 0x04;
	/**
	 * 换卡读原卡 0x05
	 */
	public static byte ReadOldCard = 0x05;
	/**
	 * 换卡换新卡 0x06
	 */
	public static byte ChangeNewCard = 0x06;
	/**
	 * 读卡修正 0x07
	 */
	public static byte ReadCard = 0x07;
	/**
	 * 制出纳卡 0x08
	 */
	public static byte MakeCashierCard = 0x08;
	/**
	 * 挂失出纳卡 0x09
	 */
	public static byte LossCashierCard = 0x09;
	/**
	 * 解挂出纳卡 0x0a
	 */
	public static byte UnLossCashierCard = 0x0a;
	/**
	 * 补办出纳卡 0x0b
	 */
	public static byte RemakeCashierCard = 0x0b;
	/**
	 * 读取出纳卡 0x0c
	 */
	public static byte ReadCashierCard = 0x0c;
	/**
	 * 修改出纳卡有效期 0x0d
	 */
	public static byte InvalidDateCashierCard = 0x0d;
	/**
	 * 读取卡余额 0x0e
	 */
	public static byte ReadCardOddFare = 0x0e;
	/**
	 * 存取款 0x0f
	 */
	public static byte Charge = 0x0f;
	/**
	 * 有卡注销 0x10
	 */
	public static byte OffWithCard = 0x10;

}