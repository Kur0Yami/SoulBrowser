.class public Lcom/bumptech/glide/load/model/ByteArrayLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter;,
        Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;,
        Lcom/bumptech/glide/load/model/ByteArrayLoader$StreamFactory;,
        Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader<",
        "[BTData;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader;->a:Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, [B

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1
.end method

.method public final b(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 1

    .line 1
    check-cast p1, [B

    .line 2
    .line 3
    new-instance p2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 4
    .line 5
    new-instance p3, Lcom/bumptech/glide/signature/ObjectKey;

    .line 6
    .line 7
    invoke-direct {p3, p1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    new-instance p4, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader;->a:Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter;

    .line 13
    .line 14
    invoke-direct {p4, p1, v0}, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;-><init>([BLcom/bumptech/glide/load/model/ByteArrayLoader$Converter;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p2, p3, p4}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    .line 18
    .line 19
    .line 20
    return-object p2
.end method
