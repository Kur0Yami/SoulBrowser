.class Lcom/mycompany/app/dialog/DialogTabPress$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyLinkView$MainLinkListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogTabPress;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabPress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabPress$2;->a:Lcom/mycompany/app/dialog/DialogTabPress;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabPress$2;->a:Lcom/mycompany/app/dialog/DialogTabPress;

    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabPress;->g0:Lcom/mycompany/app/dialog/DialogTabPress$TabActionHandler;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/mycompany/app/dialog/DialogTabPress$TabActionHandler;->onAction(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTabPress;->dismiss()V

    :cond_0
    return-void
.end method
