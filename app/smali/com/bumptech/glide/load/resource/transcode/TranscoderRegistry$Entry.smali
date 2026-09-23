.class final Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/lang/Class;

.field public final c:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry;->a:Ljava/lang/Class;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry;->b:Ljava/lang/Class;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry;->c:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    .line 9
    .line 10
    return-void
.end method
