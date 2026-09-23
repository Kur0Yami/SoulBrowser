.class Lcom/mycompany/app/web/WebViewActivity$363;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$363;->c:Lcom/mycompany/app/web/WebViewActivity;

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
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$363;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->U3()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, Lcom/mycompany/app/web/WebViewActivity;->I9(Z)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, p1, Lcom/mycompany/app/web/WebViewActivity;->mk:Ljava/lang/String;

    .line 14
    .line 15
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->y:Z

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/mycompany/app/web/WebViewActivity;->L9(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
