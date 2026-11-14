package org.bouncycastle.its.operator;

import org.bouncycastle.its.ITSCertificate;
import org.bouncycastle.operator.ContentVerifier;
import org.bouncycastle.operator.OperatorCreationException;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public interface ITSContentVerifierProvider {
    ContentVerifier get(int i) throws OperatorCreationException;

    ITSCertificate getAssociatedCertificate();

    boolean hasAssociatedCertificate();
}
