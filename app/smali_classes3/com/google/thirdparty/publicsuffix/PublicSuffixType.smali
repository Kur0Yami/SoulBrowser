.class public final enum Lcom/google/thirdparty/publicsuffix/PublicSuffixType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/thirdparty/publicsuffix/PublicSuffixType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic g:[Lcom/google/thirdparty/publicsuffix/PublicSuffixType;


# instance fields
.field public final c:C

.field public final f:C


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    .line 2
    .line 3
    const/16 v1, 0x3a

    .line 4
    .line 5
    const/16 v2, 0x2c

    .line 6
    .line 7
    const-string v3, "PRIVATE"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;-><init>(Ljava/lang/String;ICC)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    .line 14
    .line 15
    const/16 v2, 0x21

    .line 16
    .line 17
    const/16 v3, 0x3f

    .line 18
    .line 19
    const-string v5, "REGISTRY"

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    invoke-direct {v1, v5, v6, v2, v3}, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;-><init>(Ljava/lang/String;ICC)V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    new-array v2, v2, [Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    .line 27
    .line 28
    aput-object v0, v2, v4

    .line 29
    .line 30
    aput-object v1, v2, v6

    .line 31
    .line 32
    sput-object v2, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->g:[Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ICC)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-char p3, p0, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->c:C

    .line 5
    .line 6
    iput-char p4, p0, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->f:C

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/thirdparty/publicsuffix/PublicSuffixType;
    .locals 1

    .line 1
    const-class v0, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/thirdparty/publicsuffix/PublicSuffixType;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->g:[Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    .line 8
    .line 9
    return-object v0
.end method
