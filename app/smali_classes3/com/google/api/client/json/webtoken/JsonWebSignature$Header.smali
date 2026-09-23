.class public Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
.super Lcom/google/api/client/json/webtoken/JsonWebToken$Header;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/json/webtoken/JsonWebSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# instance fields
.field private algorithm:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "alg"
    .end annotation
.end field

.field private critical:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "crit"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private jwk:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "jwk"
    .end annotation
.end field

.field private jwkUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "jku"
    .end annotation
.end field

.field private keyId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "kid"
    .end annotation
.end field

.field private x509Certificates:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "x5c"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private x509Thumbprint:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "x5t"
    .end annotation
.end field

.field private x509Url:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "x5u"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/json/webtoken/JsonWebToken$Header;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/api/client/json/webtoken/JsonWebToken$Header;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/api/client/json/webtoken/JsonWebToken$Header;->a()Lcom/google/api/client/json/webtoken/JsonWebToken$Header;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    .line 6
    .line 7
    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebToken$Header;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/webtoken/JsonWebToken$Header;->b(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebToken$Header;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    .line 6
    .line 7
    return-object p1
.end method

.method public final clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/api/client/json/webtoken/JsonWebToken$Header;->a()Lcom/google/api/client/json/webtoken/JsonWebToken$Header;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    return-object v0
.end method

.method public final clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/google/api/client/json/webtoken/JsonWebToken$Header;->a()Lcom/google/api/client/json/webtoken/JsonWebToken$Header;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-super {p0}, Lcom/google/api/client/json/webtoken/JsonWebToken$Header;->a()Lcom/google/api/client/json/webtoken/JsonWebToken$Header;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->algorithm:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->keyId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->x509Certificates:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final g()V
    .locals 1

    .line 1
    const-string v0, "RS256"

    .line 2
    .line 3
    iput-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->algorithm:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->keyId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 1
    invoke-super {p0, p2, p1}, Lcom/google/api/client/json/webtoken/JsonWebToken$Header;->b(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebToken$Header;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 2
    invoke-super {p0, p2, p1}, Lcom/google/api/client/json/webtoken/JsonWebToken$Header;->b(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebToken$Header;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    return-object p1
.end method
