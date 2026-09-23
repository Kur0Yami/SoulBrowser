.class public Lorg/apache/commons/lang3/RandomUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lorg/apache/commons/lang3/RandomUtils;

.field public static final c:Landroidx/emoji2/text/flatbuffer/b;


# instance fields
.field public final a:Ljava/util/function/Supplier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/RandomUtils;

    .line 2
    .line 3
    new-instance v1, Lorg/apache/commons/lang3/g;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, v2}, Lorg/apache/commons/lang3/g;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/RandomUtils;-><init>(Ljava/util/function/Supplier;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lorg/apache/commons/lang3/RandomUtils;->b:Lorg/apache/commons/lang3/RandomUtils;

    .line 13
    .line 14
    new-instance v0, Lorg/apache/commons/lang3/g;

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/g;-><init>(I)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Landroidx/emoji2/text/flatbuffer/b;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-direct {v1, v0, v2}, Landroidx/emoji2/text/flatbuffer/b;-><init>(Ljava/util/function/Supplier;I)V

    .line 24
    .line 25
    .line 26
    sput-object v1, Lorg/apache/commons/lang3/RandomUtils;->c:Landroidx/emoji2/text/flatbuffer/b;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/lang3/RandomUtils;->a:Ljava/util/function/Supplier;

    .line 5
    .line 6
    return-void
.end method

.method public static a()Ljava/security/SecureRandom;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Ljava/security/SecureRandom;->getInstanceStrong()Ljava/security/SecureRandom;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object v0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Lorg/apache/commons/lang3/exception/UncheckedException;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    throw v1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "RandomUtils [random="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/commons/lang3/RandomUtils;->a:Ljava/util/function/Supplier;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/util/Random;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "]"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method
