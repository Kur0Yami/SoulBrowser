.class Lcom/mycompany/app/web/WebViewActivity$180;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$180;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$180;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 3
    .line 4
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Q3:Z

    .line 5
    .line 6
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->P3:Lcom/mycompany/app/wview/WebUpView;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget v0, Lcom/mycompany/app/pref/PrefZone;->y:I

    .line 12
    .line 13
    if-eq v0, p1, :cond_1

    .line 14
    .line 15
    sput p1, Lcom/mycompany/app/pref/PrefZone;->y:I

    .line 16
    .line 17
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 18
    .line 19
    const/16 v2, 0xf

    .line 20
    .line 21
    const-string v3, "mShowUpPos"

    .line 22
    .line 23
    invoke-static {v0, v2, p1, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->Z1()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->C8()V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->F8()V

    .line 33
    .line 34
    .line 35
    return-void
.end method
