.class public interface abstract Lnet/lingala/zip4j/util/InternalZipConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lnet/lingala/zip4j/util/InternalZipConstants;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->f1()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    return-void
.end method
