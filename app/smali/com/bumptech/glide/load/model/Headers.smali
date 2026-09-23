.class public interface abstract Lcom/bumptech/glide/load/model/Headers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/bumptech/glide/load/model/LazyHeaders;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->a:Z

    .line 8
    .line 9
    new-instance v1, Lcom/bumptech/glide/load/model/LazyHeaders;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->b:Ljava/util/Map;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/model/LazyHeaders;-><init>(Ljava/util/Map;)V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lcom/bumptech/glide/load/model/Headers;->a:Lcom/bumptech/glide/load/model/LazyHeaders;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
.end method
