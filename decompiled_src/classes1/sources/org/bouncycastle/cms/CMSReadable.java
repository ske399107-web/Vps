package org.bouncycastle.cms;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
interface CMSReadable {
    InputStream getInputStream() throws IOException, CMSException;
}
