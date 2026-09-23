package com.google.api.client.googleapis.mtls;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.api.client.googleapis.util.Utils;
import com.google.api.client.util.Beta;
import com.google.api.client.util.SecurityUtils;
import com.google.common.annotations.VisibleForTesting;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.security.KeyStore;
import java.util.List;

@Beta
/* loaded from: classes3.dex */
public class MtlsUtils {
    private static final MtlsProvider MTLS_PROVIDER = new DefaultMtlsProvider();

    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static class DefaultMtlsProvider implements MtlsProvider {
        private static final String DEFAULT_CONTEXT_AWARE_METADATA_PATH = System.getProperty("user.home") + "/.secureConnect/context_aware_metadata.json";
        public static final String GOOGLE_API_USE_CLIENT_CERTIFICATE = "GOOGLE_API_USE_CLIENT_CERTIFICATE";
        private EnvironmentProvider envProvider;
        private String metadataPath;

        /* loaded from: classes3.dex */
        public interface EnvironmentProvider {
            String getenv(String str);
        }

        /* loaded from: classes3.dex */
        public static class SystemEnvironmentProvider implements EnvironmentProvider {
            @Override // com.google.api.client.googleapis.mtls.MtlsUtils.DefaultMtlsProvider.EnvironmentProvider
            public String getenv(String str) {
                return System.getenv(str);
            }
        }

        public DefaultMtlsProvider() {
            this(new SystemEnvironmentProvider(), DEFAULT_CONTEXT_AWARE_METADATA_PATH);
        }

        @VisibleForTesting
        public static List<String> extractCertificateProviderCommand(InputStream inputStream) {
            return ((ContextAwareMetadataJson) Utils.getDefaultJsonFactory().createJsonParser(inputStream).z(ContextAwareMetadataJson.class, false)).getCommands();
        }

        @VisibleForTesting
        public static int runCertificateProviderCommand(Process process, long j) {
            long currentTimeMillis = System.currentTimeMillis();
            do {
                try {
                    process.exitValue();
                    return process.exitValue();
                } catch (IllegalThreadStateException unused) {
                    if (j > 0) {
                        Thread.sleep(Math.min(1 + j, 100L));
                    }
                    j -= System.currentTimeMillis() - currentTimeMillis;
                }
            } while (j > 0);
            process.destroy();
            throw new IOException("cert provider command timed out");
        }

        @Override // com.google.api.client.googleapis.mtls.MtlsProvider
        public KeyStore getKeyStore() {
            try {
                Process start = new ProcessBuilder(extractCertificateProviderCommand(new FileInputStream(this.metadataPath))).start();
                int runCertificateProviderCommand = runCertificateProviderCommand(start, 1000L);
                if (runCertificateProviderCommand == 0) {
                    return SecurityUtils.createMtlsKeyStore(start.getInputStream());
                }
                throw new IOException("Cert provider command failed with exit code: " + runCertificateProviderCommand);
            } catch (FileNotFoundException unused) {
                return null;
            } catch (InterruptedException e) {
                throw new IOException("Interrupted executing certificate provider command", e);
            }
        }

        @Override // com.google.api.client.googleapis.mtls.MtlsProvider
        public String getKeyStorePassword() {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }

        @Override // com.google.api.client.googleapis.mtls.MtlsProvider
        public boolean useMtlsClientCertificate() {
            return "true".equals(this.envProvider.getenv(GOOGLE_API_USE_CLIENT_CERTIFICATE));
        }

        @VisibleForTesting
        public DefaultMtlsProvider(EnvironmentProvider environmentProvider, String str) {
            this.envProvider = environmentProvider;
            this.metadataPath = str;
        }
    }

    public static MtlsProvider getDefaultMtlsProvider() {
        return MTLS_PROVIDER;
    }
}
