.class Lcom/mycompany/app/web/WebViewActivity$558;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$558;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$558;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtri;->k:Z

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->b2()V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ab:Lcom/mycompany/app/wview/WebFltView;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/mycompany/app/wview/WebFltView;->q()V

    .line 20
    .line 21
    .line 22
    :cond_1
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->X9(Z)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ab:Lcom/mycompany/app/wview/WebFltView;

    .line 28
    .line 29
    if-eqz v1, :cond_4

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/mycompany/app/wview/WebFltView;->o()V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->ab:Lcom/mycompany/app/wview/WebFltView;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    :cond_3
    const/4 v1, 0x0

    .line 44
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ab:Lcom/mycompany/app/wview/WebFltView;

    .line 45
    .line 46
    :cond_4
    :goto_0
    return-void
.end method
