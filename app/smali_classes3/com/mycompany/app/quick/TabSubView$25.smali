.class Lcom/mycompany/app/quick/TabSubView$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/TabSubView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/TabSubView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mycompany/app/quick/TabSubView$25;->c:Lcom/mycompany/app/quick/TabSubView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/mycompany/app/quick/TabSubView$25;->c:Lcom/mycompany/app/quick/TabSubView;

    iget-object v0, p1, Lcom/mycompany/app/quick/TabSubView;->D:Lcom/mycompany/app/web/WebTabAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/mycompany/app/quick/TabSubView;->f:Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/mycompany/app/web/WebTabAdapter;->copySelectedUrls(Landroid/content/Context;)V

    return-void
.end method
