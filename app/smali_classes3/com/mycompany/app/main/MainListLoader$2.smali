.class Lcom/mycompany/app/main/MainListLoader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListLoader;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListLoader$2;->c:Lcom/mycompany/app/main/MainListLoader;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListLoader$2;->c:Lcom/mycompany/app/main/MainListLoader;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListLoader;->f:Landroid/os/Handler;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainListLoader;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/mycompany/app/main/MainListLoader;->j:Landroid/view/View;

    .line 11
    .line 12
    iget-object v3, v0, Lcom/mycompany/app/main/MainListLoader;->k:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    iput-object v4, v0, Lcom/mycompany/app/main/MainListLoader;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 16
    .line 17
    iput-object v4, v0, Lcom/mycompany/app/main/MainListLoader;->j:Landroid/view/View;

    .line 18
    .line 19
    iput-object v4, v0, Lcom/mycompany/app/main/MainListLoader;->k:Landroid/graphics/Bitmap;

    .line 20
    .line 21
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    iget-object v4, v0, Lcom/mycompany/app/main/MainListLoader;->d:Lcom/mycompany/app/main/MainListLoader$ListLoadListener;

    .line 28
    .line 29
    if-eqz v4, :cond_2

    .line 30
    .line 31
    invoke-interface {v4, v1, v2, v3}, Lcom/mycompany/app/main/MainListLoader$ListLoadListener;->b(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v3, v0, Lcom/mycompany/app/main/MainListLoader;->d:Lcom/mycompany/app/main/MainListLoader$ListLoadListener;

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-interface {v3, v1, v2}, Lcom/mycompany/app/main/MainListLoader$ListLoadListener;->a(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 43
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainListLoader;->h:Z

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListLoader;->a()V

    .line 46
    .line 47
    .line 48
    return-void
.end method
