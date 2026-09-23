.class Lcom/mycompany/app/quick/QuickNewsGoogle$LocalChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/quick/QuickNewsGoogle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalChromeClient"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/quick/QuickNewsGoogle;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickNewsGoogle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickNewsGoogle$LocalChromeClient;->a:Lcom/mycompany/app/quick/QuickNewsGoogle;

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
    .locals 1

    .line 1
    const/16 p1, 0x64

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickNewsGoogle$LocalChromeClient;->a:Lcom/mycompany/app/quick/QuickNewsGoogle;

    .line 4
    .line 5
    if-ne p2, p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, v0, Lcom/mycompany/app/quick/QuickNewsGoogle;->p:Z

    .line 9
    .line 10
    :cond_0
    iget-object p1, v0, Lcom/mycompany/app/quick/QuickNews;->b:Lcom/mycompany/app/quick/QuickNews$NewsListListener;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-interface {p1, p2}, Lcom/mycompany/app/quick/QuickNews$NewsListListener;->c(I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method
