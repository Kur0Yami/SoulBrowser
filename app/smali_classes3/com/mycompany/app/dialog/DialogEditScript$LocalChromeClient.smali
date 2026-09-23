.class Lcom/mycompany/app/dialog/DialogEditScript$LocalChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogEditScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalChromeClient"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogEditScript;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditScript;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditScript$LocalChromeClient;->a:Lcom/mycompany/app/dialog/DialogEditScript;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 1
    const/16 p1, 0x64

    .line 2
    .line 3
    if-ne p2, p1, :cond_2

    .line 4
    .line 5
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditScript$LocalChromeClient;->a:Lcom/mycompany/app/dialog/DialogEditScript;

    .line 6
    .line 7
    iget-boolean p2, p1, Lcom/mycompany/app/dialog/DialogEditScript;->X:Z

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p1, Lcom/mycompany/app/dialog/DialogEditScript;->X:Z

    .line 14
    .line 15
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogEditScript;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p2, 0x0

    .line 21
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    :cond_2
    :goto_0
    return-void
.end method
