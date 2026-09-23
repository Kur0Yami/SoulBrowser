.class Lcom/mycompany/app/dialog/DialogDownUrl$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyDialogBottom$ShowAdListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogDownUrl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$20;->a:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownUrl$20;->a:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->H0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_4

    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->b0:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, v1, Lcom/mycompany/app/main/MainApp;->N0:Lcom/mycompany/app/view/MyAdNative;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyAdNative;->p()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    :goto_0
    if-eqz v3, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->h0:Z

    .line 31
    .line 32
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->d0:Lcom/mycompany/app/view/MyAdFrame;

    .line 33
    .line 34
    if-eqz v1, :cond_7

    .line 35
    .line 36
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->e0:Lcom/mycompany/app/view/MyAdNative;

    .line 37
    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_3
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownUrl$21;

    .line 42
    .line 43
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownUrl$21;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 44
    .line 45
    .line 46
    const-wide/16 v3, 0x3e8

    .line 47
    .line 48
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->d0:Lcom/mycompany/app/view/MyAdFrame;

    .line 53
    .line 54
    if-eqz v1, :cond_7

    .line 55
    .line 56
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->e0:Lcom/mycompany/app/view/MyAdNative;

    .line 57
    .line 58
    if-eqz v3, :cond_5

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_5
    iget-boolean v3, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->g0:Z

    .line 62
    .line 63
    if-eqz v3, :cond_6

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_6
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->g0:Z

    .line 67
    .line 68
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownUrl$22;

    .line 69
    .line 70
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownUrl$22;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 74
    .line 75
    .line 76
    :cond_7
    :goto_2
    return-void
.end method
