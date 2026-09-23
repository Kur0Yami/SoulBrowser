.class final Lcom/bumptech/glide/provider/EncoderRegistry$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/provider/EncoderRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Lcom/bumptech/glide/load/Encoder;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/provider/EncoderRegistry$Entry;->a:Ljava/lang/Class;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/provider/EncoderRegistry$Entry;->b:Lcom/bumptech/glide/load/Encoder;

    .line 7
    .line 8
    return-void
.end method
