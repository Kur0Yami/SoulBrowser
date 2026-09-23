.class Lcom/mycompany/app/web/WebViewActivity$195;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$195;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    sget p1, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$195;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/web/WebViewActivity;->d4:Lcom/mycompany/app/dialog/DialogSetRate;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetRate;->dismiss()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p1, Lcom/mycompany/app/web/WebViewActivity;->d4:Lcom/mycompany/app/dialog/DialogSetRate;

    .line 14
    .line 15
    :cond_0
    iget-boolean v0, p1, Lcom/mycompany/app/web/WebViewActivity;->Jg:Z

    .line 16
    .line 17
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->V:Z

    .line 18
    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iput-boolean v1, p1, Lcom/mycompany/app/web/WebViewActivity;->Jg:Z

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    iget-object p1, p1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 28
    .line 29
    if-nez p1, :cond_3

    .line 30
    .line 31
    :goto_0
    return-void

    .line 32
    :cond_3
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$195$1;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebViewActivity$195$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$195;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method
