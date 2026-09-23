.class Lcom/mycompany/app/web/WebViewActivity$390;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$390;->c:Lcom/mycompany/app/web/WebViewActivity;

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
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$390;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->w4()V

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/mycompany/app/pref/PrefAlbum;->u:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iput-boolean v1, p1, Lcom/mycompany/app/web/WebViewActivity;->J6:Z

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1, v1}, Lcom/mycompany/app/web/WebViewActivity;->D8(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p1, Lcom/mycompany/app/web/WebViewActivity;->T6:Lcom/mycompany/app/wview/WebFltView;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/mycompany/app/wview/WebFltView;->q()V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->s2()Z

    .line 26
    .line 27
    .line 28
    return-void
.end method
