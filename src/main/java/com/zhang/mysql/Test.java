package com.zhang.mysql;

import java.util.Iterator;
import java.util.TreeSet;

/**
 * @author: create by zhl
 * @version: v1.0
 * @description: com.zhang.mysql
 * @date:2020/11/3
 */
public class Test {


    public static void main(String[] args) {

        TreeSet<String> set=new TreeSet<>();
        String a="1";
        String b="3";
        String c="9";
        String d="4";
        String e="6";
        set.add(a);
        set.add(b);
        set.add(c);
        set.add(d);
        set.add(e);
        System.out.println(set.last());
        for (Iterator<String> iterator = set.iterator(); iterator.hasNext(); ) {
            String next = iterator.next();
            System.out.println(next.toString());
        }

    }
}
