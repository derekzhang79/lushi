package wangyi.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import wangyi.cache.CardCache;
import wangyi.data.Card;


public class TestBean 
{

	public static void main(String args[])
	{
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		
		CardCache sc=(CardCache)context.getBean("springCards");
		
		Card card=sc.getCard("真银圣剑");
		System.out.println(card.getImageid());
		System.out.println(card.getEffectCode());
		System.out.println(card.getTargetCode());
	}
}
