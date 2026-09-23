.class Lcom/mycompany/app/web/WebVideoImage$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoImage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoImage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoImage$2;->c:Lcom/mycompany/app/web/WebVideoImage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoImage$2;->c:Lcom/mycompany/app/web/WebVideoImage;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/web/WebVideoImage;->s:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p1, Lcom/mycompany/app/web/WebVideoImage;->s:Z

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebVideoImage;->A()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p1, Lcom/mycompany/app/web/WebVideoImage;->k:Lcom/mycompany/app/web/WebVideoFrame$VideoFrameListener;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/mycompany/app/web/WebVideoFrame$VideoFrameListener;->a()V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/web/WebVideoImage;->g:Landroid/view/ViewGroup;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    :goto_0
    return-void

    .line 26
    :cond_2
    new-instance v1, Lcom/mycompany/app/web/WebVideoImage$12;

    .line 27
    .line 28
    invoke-direct {v1, p1}, Lcom/mycompany/app/web/WebVideoImage$12;-><init>(Lcom/mycompany/app/web/WebVideoImage;)V

    .line 29
    .line 30
    .line 31
    const-wide/16 v2, 0x64

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method
