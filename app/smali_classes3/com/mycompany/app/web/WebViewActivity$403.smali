.class Lcom/mycompany/app/web/WebViewActivity$403;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$403;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$403;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->El:Z

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->Y5()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    move v2, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-boolean v2, Lcom/mycompany/app/pref/PrefAlbum;->w:Z

    .line 15
    .line 16
    :goto_0
    if-eqz v2, :cond_3

    .line 17
    .line 18
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->T6:Lcom/mycompany/app/wview/WebFltView;

    .line 19
    .line 20
    if-nez v2, :cond_2

    .line 21
    .line 22
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :try_start_0
    new-instance v2, Lcom/mycompany/app/wview/WebFltView;

    .line 28
    .line 29
    const/4 v3, 0x3

    .line 30
    invoke-direct {v2, v0, v3}, Lcom/mycompany/app/wview/WebFltView;-><init>(Landroid/content/Context;I)V

    .line 31
    .line 32
    .line 33
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->T6:Lcom/mycompany/app/wview/WebFltView;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/mycompany/app/wview/WebFltView;->q()V

    .line 36
    .line 37
    .line 38
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->T6:Lcom/mycompany/app/wview/WebFltView;

    .line 39
    .line 40
    const/16 v3, 0x8

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Lcom/mycompany/app/wview/WebFltView;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->T6:Lcom/mycompany/app/wview/WebFltView;

    .line 46
    .line 47
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$408;

    .line 48
    .line 49
    invoke-direct {v3, v0}, Lcom/mycompany/app/web/WebViewActivity$408;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3}, Lcom/mycompany/app/wview/WebFltView;->setFltListener(Lcom/mycompany/app/wview/WebFltView$FltViewListener;)V

    .line 53
    .line 54
    .line 55
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 56
    .line 57
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->T6:Lcom/mycompany/app/wview/WebFltView;

    .line 58
    .line 59
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 60
    .line 61
    invoke-virtual {v2, v3, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    :catch_0
    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 65
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->S9(Z)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    if-eqz v1, :cond_6

    .line 70
    .line 71
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->T6:Lcom/mycompany/app/wview/WebFltView;

    .line 72
    .line 73
    if-eqz v2, :cond_7

    .line 74
    .line 75
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 76
    .line 77
    if-nez v4, :cond_4

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    sget-boolean v5, Lcom/mycompany/app/pref/PrefAlbum;->w:Z

    .line 81
    .line 82
    if-eqz v5, :cond_5

    .line 83
    .line 84
    sget v5, Lcom/mycompany/app/pref/PrefAlbum;->u:I

    .line 85
    .line 86
    if-eqz v5, :cond_5

    .line 87
    .line 88
    invoke-virtual {v2, v3}, Lcom/mycompany/app/wview/WebFltView;->m(Z)V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_5
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$409;

    .line 93
    .line 94
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$409;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_6
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->T6:Lcom/mycompany/app/wview/WebFltView;

    .line 102
    .line 103
    if-eqz v2, :cond_7

    .line 104
    .line 105
    invoke-virtual {v2, v3}, Lcom/mycompany/app/wview/WebFltView;->m(Z)V

    .line 106
    .line 107
    .line 108
    :cond_7
    :goto_2
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Fl:Z

    .line 109
    .line 110
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 111
    .line 112
    if-nez v1, :cond_8

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_8
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$404;

    .line 116
    .line 117
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$404;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 121
    .line 122
    .line 123
    :goto_3
    return-void
.end method
