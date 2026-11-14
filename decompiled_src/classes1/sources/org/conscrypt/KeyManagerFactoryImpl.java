package org.conscrypt;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactorySpi;
import javax.net.ssl.ManagerFactoryParameters;
import org.conscrypt.io.IoUtils;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class KeyManagerFactoryImpl extends KeyManagerFactorySpi {
    private KeyStore keyStore;
    private char[] pwd;

    @Override // javax.net.ssl.KeyManagerFactorySpi
    public KeyManager[] engineGetKeyManagers() {
        if (this.keyStore != null) {
            return new KeyManager[]{new KeyManagerImpl(this.keyStore, this.pwd)};
        }
        throw new IllegalStateException("KeyManagerFactory is not initialized");
    }

    @Override // javax.net.ssl.KeyManagerFactorySpi
    public void engineInit(KeyStore keyStore, char[] cArr) throws KeyStoreException, NoSuchAlgorithmException, UnrecoverableKeyException {
        FileInputStream fileInputStream;
        if (keyStore != null) {
            this.keyStore = keyStore;
            if (cArr != null) {
                this.pwd = (char[]) cArr.clone();
                return;
            } else {
                this.pwd = EmptyArray.CHAR;
                return;
            }
        }
        this.keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
        String property = System.getProperty("javax.net.ssl.keyStore");
        FileInputStream fileInputStream2 = null;
        if (property != null && !property.equalsIgnoreCase("NONE") && !property.isEmpty()) {
            String property2 = System.getProperty("javax.net.ssl.keyStorePassword");
            if (property2 == null) {
                this.pwd = EmptyArray.CHAR;
            } else {
                this.pwd = property2.toCharArray();
            }
            try {
                try {
                    fileInputStream = new FileInputStream(new File(property));
                } catch (Throwable th) {
                    th = th;
                }
            } catch (FileNotFoundException e) {
                e = e;
            } catch (IOException e2) {
                e = e2;
            } catch (CertificateException e3) {
                e = e3;
            }
            try {
                this.keyStore.load(fileInputStream, this.pwd);
                IoUtils.closeQuietly(fileInputStream);
                return;
            } catch (FileNotFoundException e4) {
                e = e4;
                throw new KeyStoreException(e);
            } catch (IOException e5) {
                e = e5;
                throw new KeyStoreException(e);
            } catch (CertificateException e6) {
                e = e6;
                throw new KeyStoreException(e);
            } catch (Throwable th2) {
                th = th2;
                fileInputStream2 = fileInputStream;
                IoUtils.closeQuietly(fileInputStream2);
                throw th;
            }
        }
        try {
            this.keyStore.load(null, null);
        } catch (IOException e7) {
            throw new KeyStoreException(e7);
        } catch (CertificateException e8) {
            throw new KeyStoreException(e8);
        }
    }

    @Override // javax.net.ssl.KeyManagerFactorySpi
    public void engineInit(ManagerFactoryParameters managerFactoryParameters) throws InvalidAlgorithmParameterException {
        throw new InvalidAlgorithmParameterException("ManagerFactoryParameters not supported");
    }
}
