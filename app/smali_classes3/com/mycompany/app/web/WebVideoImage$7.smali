.class Lcom/mycompany/app/web/WebVideoImage$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoImage$7;->c:Lcom/mycompany/app/web/WebVideoImage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoImage$7;->c:Lcom/mycompany/app/web/WebVideoImage;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoImage;->c:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v2, v0, Lcom/mycompany/app/web/WebVideoImage;->m:I

    .line 9
    .line 10
    const/4 v3, 0x6

    .line 11
    if-ne v2, v3, :cond_1

    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->B7(Landroid/app/Activity;I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoImage;->g:Landroid/view/ViewGroup;

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_2
    new-instance v2, Lcom/mycompany/app/web/WebVideoImage$8;

    .line 23
    .line 24
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebVideoImage$8;-><init>(Lcom/mycompany/app/web/WebVideoImage;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method
