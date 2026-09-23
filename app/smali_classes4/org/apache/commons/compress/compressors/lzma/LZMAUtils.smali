.class public Lorg/apache/commons/compress/compressors/lzma/LZMAUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;
    }
.end annotation


# static fields
.field public static volatile a:Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, ".lzma"

    .line 7
    .line 8
    const-string v2, ""

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "-lzma"

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    new-instance v1, Lorg/apache/commons/compress/compressors/FileNameUtil;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Lorg/apache/commons/compress/compressors/FileNameUtil;-><init>(Ljava/util/HashMap;)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;->c:Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    .line 24
    .line 25
    sput-object v0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils;->a:Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    .line 26
    .line 27
    :try_start_0
    const-string v1, "org.osgi.framework.BundleEvent"

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catch_0
    sget-object v1, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils;->a:Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    .line 34
    .line 35
    if-ne v1, v0, :cond_0

    .line 36
    .line 37
    :try_start_1
    sget v0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->f:I
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    .line 38
    .line 39
    sget-object v0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;->f:Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_1
    sget-object v0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;->g:Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    .line 43
    .line 44
    :goto_0
    sput-object v0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils;->a:Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    .line 45
    .line 46
    :cond_0
    return-void
.end method
