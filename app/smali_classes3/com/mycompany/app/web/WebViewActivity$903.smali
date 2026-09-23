.class Lcom/mycompany/app/web/WebViewActivity$903;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$903;->a:Lcom/mycompany/app/web/WebViewActivity;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$903;->a:Lcom/mycompany/app/web/WebViewActivity;

    iget-object v0, p1, Lcom/mycompany/app/web/WebViewActivity;->cA:Lcom/mycompany/app/dialog/DialogSetPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetPopup;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/mycompany/app/web/WebViewActivity;->cA:Lcom/mycompany/app/dialog/DialogSetPopup;

    :cond_0
    return-void
.end method
