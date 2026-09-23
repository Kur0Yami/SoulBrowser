.class Lcom/mycompany/app/web/WebViewActivity$58;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$58;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->R1:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    const-string v0, "myutil"

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-boolean v1, Lcom/mycompany/app/main/MainApp;->R1:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$58;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 14
    .line 15
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v2}, Lcom/mycompany/app/main/MainApp;->r(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Lcom/mycompany/app/main/MainApp;->s(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainApp;->t(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 28
    .line 29
    .line 30
    sput-boolean v1, Lcom/mycompany/app/main/MainApp;->O1:Z

    .line 31
    .line 32
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 33
    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$58$1;

    .line 38
    .line 39
    invoke-direct {v3, p0}, Lcom/mycompany/app/web/WebViewActivity$58$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$58;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    sget-boolean v2, Lcom/mycompany/app/main/image/MainImagePreview;->E2:Z

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    if-nez v2, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    sput-boolean v3, Lcom/mycompany/app/main/image/MainImagePreview;->E2:Z

    .line 52
    .line 53
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 54
    .line 55
    sget-boolean v4, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 56
    .line 57
    invoke-static {v2, v4, v3}, Lcom/mycompany/app/main/MainUtil;->W(Landroid/content/Context;ZZ)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-nez v4, :cond_5

    .line 66
    .line 67
    new-instance v4, Ljava/io/File;

    .line 68
    .line 69
    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_3

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 80
    .line 81
    if-nez v2, :cond_4

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    new-instance v4, Lcom/mycompany/app/web/WebViewActivity$60;

    .line 85
    .line 86
    invoke-direct {v4, v0}, Lcom/mycompany/app/web/WebViewActivity$60;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 90
    .line 91
    .line 92
    :cond_5
    :goto_0
    sget-boolean v2, Lcom/mycompany/app/pref/PrefWeb;->Z:Z

    .line 93
    .line 94
    if-eqz v2, :cond_6

    .line 95
    .line 96
    invoke-static {v0}, Lcom/mycompany/app/web/WebViewActivity;->W0(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 97
    .line 98
    .line 99
    :cond_6
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->J9:Z

    .line 100
    .line 101
    if-nez v2, :cond_7

    .line 102
    .line 103
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->J9:Z

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->x7()V

    .line 106
    .line 107
    .line 108
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->J9:Z

    .line 109
    .line 110
    :cond_7
    :goto_1
    return-void
.end method
