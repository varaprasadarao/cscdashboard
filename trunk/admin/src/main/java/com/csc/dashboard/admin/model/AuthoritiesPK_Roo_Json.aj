// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.model;

import com.csc.dashboard.admin.model.AuthoritiesPK;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.lang.String;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect AuthoritiesPK_Roo_Json {
    
    public String AuthoritiesPK.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static AuthoritiesPK AuthoritiesPK.fromJsonToAuthoritiesPK(String json) {
        return new JSONDeserializer<AuthoritiesPK>().use(null, AuthoritiesPK.class).deserialize(json);
    }
    
    public static String AuthoritiesPK.toJsonArray(Collection<AuthoritiesPK> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<AuthoritiesPK> AuthoritiesPK.fromJsonArrayToAuthoritiesPKs(String json) {
        return new JSONDeserializer<List<AuthoritiesPK>>().use(null, ArrayList.class).use("values", AuthoritiesPK.class).deserialize(json);
    }
    
}
