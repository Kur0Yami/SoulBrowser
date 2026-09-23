.class public final Lcom/google/api/client/util/PemReader$Section;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/PemReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Section"
.end annotation


# instance fields
.field private final base64decodedBytes:[B

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/api/client/util/PemReader$Section;->title:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p2}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, [B

    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/api/client/util/PemReader$Section;->base64decodedBytes:[B

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public getBase64DecodedBytes()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/util/PemReader$Section;->base64decodedBytes:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/util/PemReader$Section;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
