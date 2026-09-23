.class Lcom/mycompany/app/web/WebViewActivity$347;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$347;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$347;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->q:Z

    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 9
    .line 10
    const/16 v2, 0x8

    .line 11
    .line 12
    const-string v3, "mGuideDown"

    .line 13
    .line 14
    invoke-static {v2, v1, v3, p1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    sget p1, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->X3()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
