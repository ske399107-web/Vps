package org.bouncycastle.cms;

import org.bouncycastle.asn1.cms.OriginatorInfo;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class CMSAuthEnvelopedGenerator extends CMSEnvelopedGenerator {
    public static final String AES128_GCM = NISTObjectIdentifiers.id_aes128_GCM.getId();
    public static final String AES192_GCM = NISTObjectIdentifiers.id_aes192_GCM.getId();
    public static final String AES256_GCM = NISTObjectIdentifiers.id_aes256_GCM.getId();
    protected OriginatorInfo originatorInfo;
    protected CMSAttributeTableGenerator authAttrsGenerator = null;
    protected CMSAttributeTableGenerator unauthAttrsGenerator = null;

    @Override // org.bouncycastle.cms.CMSEnvelopedGenerator
    public void addRecipientInfoGenerator(RecipientInfoGenerator recipientInfoGenerator) {
        this.recipientInfoGenerators.add(recipientInfoGenerator);
    }

    public void setAuthenticatedAttributeGenerator(CMSAttributeTableGenerator cMSAttributeTableGenerator) {
        this.authAttrsGenerator = cMSAttributeTableGenerator;
    }

    @Override // org.bouncycastle.cms.CMSEnvelopedGenerator
    public void setOriginatorInfo(OriginatorInformation originatorInformation) {
        this.originatorInfo = originatorInformation.toASN1Structure();
    }

    public void setUnauthenticatedAttributeGenerator(CMSAttributeTableGenerator cMSAttributeTableGenerator) {
        this.unauthAttrsGenerator = cMSAttributeTableGenerator;
    }
}
