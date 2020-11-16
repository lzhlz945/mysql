package com.zhang.mysql;

import static org.junit.Assert.assertTrue;

import org.junit.Test;

import java.io.*;
import java.util.*;

/**
 * Unit test for simple App.
 */
public class AppTest 
{
    public static void main(String[] args) {
      try (FileInputStream fileInputStream=new FileInputStream("src/jdbcProc.properties")){
          Properties properties=new Properties();
          properties.load(fileInputStream);
          Object o = properties.get("jdbc.url.proc");
          System.out.println(o);

          ResourceBundle bundle=ResourceBundle.getBundle("E:\\mysql_study\\src\\jdbcProc.properties");
          Enumeration<String> keys = bundle.getKeys();
          while (keys.hasMoreElements()){
              String s = bundle.getString(keys.nextElement());
              System.out.println(s);
              List list=new ArrayList();
              for (Iterator iterator = list.iterator(); iterator.hasNext(); ) {
                  Object next = iterator.next();

              }
          }

      }catch (Exception e){
          e.printStackTrace();
      }
    }
    /**
     * Rigorous Test :-)
     */
    @Test
    public void shouldAnswerWithTrue()
    {
        assertTrue( true );
    }
    @Test
    public void test01()
    {

        try (FileReader fileReader=new FileReader("E:\\a.txt");

             BufferedReader bufferedReader=new BufferedReader(fileReader)

        ){
            String str="";
            Map<Integer,Integer> map=new TreeMap<>(new Comparator<Integer>() {
                @Override
                public int compare(Integer o1, Integer o2) {
                    return o2-o1;
                }
            });
            bufferedReader.skip(9);
            while ((str=bufferedReader.readLine()) != null){
                str.endsWith(";");
                if( str.endsWith(";")){
                    String s1 = str.substring(0, str.lastIndexOf("-"));
                    String s2 = str.substring( str.lastIndexOf("-")+1,str.lastIndexOf(";"));

                    Integer integer1 = new Integer(s1);
                    Integer integer2 = new Integer(s2);
                    map.put(integer2,integer1);
                }

            }
            Set<Integer> integers = map.keySet();

            System.out.println("====================前5商品排行榜====================");
            int flag=0;
            for (Iterator<Integer> iterator = integers.iterator(); iterator.hasNext(); ) {
                if(flag < 5){
                    Integer next = iterator.next();
                    Integer value = map.get(next);
                    System.out.println("序号 "+(flag+1)+"   产品id:"+value+"=============售卖数量："+next);
                    flag++;
                }else {
                   break;
                }


            }



        }catch (Exception e){

            e.printStackTrace();
        }


    }
}
