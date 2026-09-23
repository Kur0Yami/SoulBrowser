.class public Lcom/google/auth/oauth2/CertificateIdentityPoolSubjectTokenSupplier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/auth/oauth2/IdentityPoolSubjectTokenSupplier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "-----BEGIN CERTIFICATE-----.*?-----END CERTIFICATE-----"

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 6
    .line 7
    .line 8
    return-void
.end method
