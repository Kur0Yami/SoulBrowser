.class Lcom/mycompany/app/web/WebViewActivity$662;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebViewActivity$PrevBackListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$662;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$662;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->P1:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-boolean p1, v1, Lcom/mycompany/app/web/WebViewActivity;->P1:Z

    .line 10
    .line 11
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->P1:Z

    .line 12
    .line 13
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefMain;->m:Z

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    iget-wide v4, v1, Lcom/mycompany/app/web/WebViewActivity;->D1:J

    .line 27
    .line 28
    sub-long v4, v2, v4

    .line 29
    .line 30
    const-wide/16 v6, 0x7d0

    .line 31
    .line 32
    cmp-long v0, v4, v6

    .line 33
    .line 34
    if-lez v0, :cond_2

    .line 35
    .line 36
    iput-wide v2, v1, Lcom/mycompany/app/web/WebViewActivity;->D1:J

    .line 37
    .line 38
    sget p1, Lnet/kaki87/soul2/testing/R$string;->press_again:I

    .line 39
    .line 40
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->c()V

    .line 45
    .line 46
    .line 47
    :cond_3
    if-nez p1, :cond_4

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->finish()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_4
    new-instance p1, Lcom/mycompany/app/web/WebViewActivity$663;

    .line 54
    .line 55
    invoke-direct {p1, v1}, Lcom/mycompany/app/web/WebViewActivity$663;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
