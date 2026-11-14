package org.bouncycastle.mime;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import o.AbstractC0304o5;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class MimeWriter {
    protected final Headers headers;

    public MimeWriter(Headers headers) {
        this.headers = headers;
    }

    public static List<String> mapToLines(Map<String, String> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (String str : map.keySet()) {
            StringBuilder o2 = AbstractC0304o5.o(str, ": ");
            o2.append(map.get(str));
            arrayList.add(o2.toString());
        }
        return arrayList;
    }

    public abstract OutputStream getContentStream() throws IOException;

    public Headers getHeaders() {
        return this.headers;
    }
}
