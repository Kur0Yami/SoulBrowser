.class Lcom/mycompany/app/web/WebViewActivity$635;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$635;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$635;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->lb:Lcom/mycompany/app/wview/WebFltView;

    .line 4
    .line 5
    if-nez v1, :cond_4

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    :try_start_0
    new-instance v1, Lcom/mycompany/app/wview/WebFltView;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v1, v0, v2}, Lcom/mycompany/app/wview/WebFltView;-><init>(Landroid/content/Context;I)V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->lb:Lcom/mycompany/app/wview/WebFltView;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/mycompany/app/wview/WebFltView;->q()V

    .line 21
    .line 22
    .line 23
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->y:Z

    .line 24
    .line 25
    if-nez v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->D5()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->bm:Lcom/mycompany/app/quick/QuickNews;

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    move v1, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v1, v3

    .line 41
    :goto_0
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-static {v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->e1(Lcom/mycompany/app/web/WebViewActivity;Z)V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->lb:Lcom/mycompany/app/wview/WebFltView;

    .line 47
    .line 48
    invoke-virtual {v1, v3}, Lcom/mycompany/app/wview/WebFltView;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->lb:Lcom/mycompany/app/wview/WebFltView;

    .line 53
    .line 54
    const/16 v2, 0x8

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/mycompany/app/wview/WebFltView;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->lb:Lcom/mycompany/app/wview/WebFltView;

    .line 60
    .line 61
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$635$1;

    .line 62
    .line 63
    invoke-direct {v2, p0}, Lcom/mycompany/app/web/WebViewActivity$635$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$635;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Lcom/mycompany/app/wview/WebFltView;->setFltListener(Lcom/mycompany/app/wview/WebFltView$FltViewListener;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->lb:Lcom/mycompany/app/wview/WebFltView;

    .line 72
    .line 73
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 74
    .line 75
    invoke-virtual {v1, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    :catch_0
    :cond_4
    :goto_2
    return-void
.end method
