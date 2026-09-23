.class Lcom/mycompany/app/web/WebViewActivity$578;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$578;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$578;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->on:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->pn:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v5, v1, Lcom/mycompany/app/web/WebViewActivity;->qn:Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 8
    .line 9
    iget-boolean v6, v1, Lcom/mycompany/app/web/WebViewActivity;->rn:Z

    .line 10
    .line 11
    iget-boolean v10, v1, Lcom/mycompany/app/web/WebViewActivity;->sn:Z

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->nn:Z

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->on:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->pn:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->qn:Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 22
    .line 23
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->m8:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Lcom/mycompany/app/dialog/DialogViewRead;

    .line 33
    .line 34
    invoke-direct {v0, v1}, Lcom/mycompany/app/dialog/DialogViewRead;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->m8:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 38
    .line 39
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 40
    .line 41
    iget v7, v1, Lcom/mycompany/app/web/WebViewActivity;->c9:I

    .line 42
    .line 43
    iget v8, v1, Lcom/mycompany/app/web/WebViewActivity;->d9:I

    .line 44
    .line 45
    iget v9, v1, Lcom/mycompany/app/web/WebViewActivity;->e9:I

    .line 46
    .line 47
    new-instance v11, Lcom/mycompany/app/web/WebViewActivity$579;

    .line 48
    .line 49
    invoke-direct {v11, v1}, Lcom/mycompany/app/web/WebViewActivity$579;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual/range {v0 .. v11}, Lcom/mycompany/app/dialog/DialogViewRead;->X(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/view/MyWebBody;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/quick/QuickAdapter$QuickItem;ZIIIZLcom/mycompany/app/dialog/DialogViewRead$DialogReadListener;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    return-void
.end method
