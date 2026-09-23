.class Lcom/mycompany/app/web/WebViewActivity$461$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$461;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$461;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$461$1;->c:Lcom/mycompany/app/web/WebViewActivity$461;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$461$1;->c:Lcom/mycompany/app/web/WebViewActivity$461;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$461;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->F1:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 11
    .line 12
    if-eqz v0, :cond_6

    .line 13
    .line 14
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView;->Z0:Lcom/mycompany/app/quick/QuickView;

    .line 15
    .line 16
    if-eqz v0, :cond_6

    .line 17
    .line 18
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 19
    .line 20
    if-eqz v1, :cond_6

    .line 21
    .line 22
    iget-boolean v1, v0, Lcom/mycompany/app/quick/QuickView;->g:Z

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-wide v1, v0, Lcom/mycompany/app/quick/QuickView;->W:J

    .line 28
    .line 29
    const-wide/16 v3, 0x0

    .line 30
    .line 31
    cmp-long v1, v1, v3

    .line 32
    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-boolean v1, v0, Lcom/mycompany/app/quick/QuickView;->p:Z

    .line 37
    .line 38
    if-nez v1, :cond_6

    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 41
    .line 42
    if-eqz v1, :cond_6

    .line 43
    .line 44
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 45
    .line 46
    if-nez v2, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    iget-boolean v1, v1, Lcom/mycompany/app/quick/QuickAdapter;->q:Z

    .line 50
    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_5

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    iget-wide v3, v0, Lcom/mycompany/app/quick/QuickView;->W:J

    .line 66
    .line 67
    const-wide/32 v5, 0x1b7740

    .line 68
    .line 69
    .line 70
    add-long/2addr v3, v5

    .line 71
    cmp-long v1, v1, v3

    .line 72
    .line 73
    if-lez v1, :cond_6

    .line 74
    .line 75
    const/4 v1, 0x1

    .line 76
    invoke-virtual {v0, v1}, Lcom/mycompany/app/quick/QuickView;->u(Z)V

    .line 77
    .line 78
    .line 79
    :cond_6
    :goto_0
    return-void
.end method
