.class Lcom/mycompany/app/dialog/DialogViewSrc$LocalChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogViewSrc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalChromeClient"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogViewSrc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewSrc$LocalChromeClient;->a:Lcom/mycompany/app/dialog/DialogViewSrc;

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
    sget p1, Lcom/mycompany/app/dialog/DialogViewSrc;->s0:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewSrc$LocalChromeClient;->a:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/mycompany/app/dialog/DialogViewSrc;->u(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
