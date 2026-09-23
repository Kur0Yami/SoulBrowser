.class public Lorg/apache/commons/compress/compressors/xz/XZUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;
    }
.end annotation


# static fields
.field public static volatile a:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;


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
    const-string v1, ".txz"

    .line 7
    .line 8
    const-string v2, ".tar"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, ".xz"

    .line 14
    .line 15
    const-string v2, ""

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const-string v1, "-xz"

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    new-instance v1, Lorg/apache/commons/compress/compressors/FileNameUtil;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Lorg/apache/commons/compress/compressors/FileNameUtil;-><init>(Ljava/util/HashMap;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;->c:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    .line 31
    .line 32
    sput-object v0, Lorg/apache/commons/compress/compressors/xz/XZUtils;->a:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    .line 33
    .line 34
    :try_start_0
    const-string v1, "org.osgi.framework.BundleEvent"

    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catch_0
    sget-object v1, Lorg/apache/commons/compress/compressors/xz/XZUtils;->a:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    .line 41
    .line 42
    if-ne v1, v0, :cond_0

    .line 43
    .line 44
    :try_start_1
    sget v0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->f:I
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    .line 46
    sget-object v0, Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;->f:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_1
    sget-object v0, Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;->g:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    .line 50
    .line 51
    :goto_0
    sput-object v0, Lorg/apache/commons/compress/compressors/xz/XZUtils;->a:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    .line 52
    .line 53
    :cond_0
    return-void
.end method
