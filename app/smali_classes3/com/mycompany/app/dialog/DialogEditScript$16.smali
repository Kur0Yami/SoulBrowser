.class Lcom/mycompany/app/dialog/DialogEditScript$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditScript;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditScript;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditScript$16;->c:Lcom/mycompany/app/dialog/DialogEditScript;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript$16;->c:Lcom/mycompany/app/dialog/DialogEditScript;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogEditScript;->W:Z

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditScript;->n0:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditScript;->n0:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogEditScript;->n0:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditScript;->R:Lcom/mycompany/app/web/WebSrcView;

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditScript;->V:Lcom/mycompany/app/view/MyCoverView;

    .line 27
    .line 28
    const/16 v3, 0x8

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditScript;->R:Lcom/mycompany/app/web/WebSrcView;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogEditScript;->g0:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v2, v0, v1}, Lcom/mycompany/app/main/MainUtil;->r6(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    :goto_0
    return-void
.end method
