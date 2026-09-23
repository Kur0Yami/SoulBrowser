.class Lcom/mycompany/app/web/WebEmgDialog$WebAppInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebEmgDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebEmgDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebEmgDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog$WebAppInterface;->a:Lcom/mycompany/app/web/WebEmgDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onViewHtml(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog$WebAppInterface;->a:Lcom/mycompany/app/web/WebEmgDialog;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebEmgDialog;->h0:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/mycompany/app/web/WebNestView;->U(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
