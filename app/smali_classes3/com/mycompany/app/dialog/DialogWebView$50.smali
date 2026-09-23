.class Lcom/mycompany/app/dialog/DialogWebView$50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogTransLang$TransNotiListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogWebView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$50;->a:Lcom/mycompany/app/dialog/DialogWebView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogWebView;->k2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebView$50;->a:Lcom/mycompany/app/dialog/DialogWebView;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->O()V

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebView;->J1:Lcom/mycompany/app/dialog/DialogTransLang$TransNotiListener;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogTransLang$TransNotiListener;->a()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
