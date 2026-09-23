.class Lcom/mycompany/app/quick/QuickAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickAdapter$4;->c:Lcom/mycompany/app/quick/QuickAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdapter$4;->c:Lcom/mycompany/app/quick/QuickAdapter;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/quick/QuickAdapter;->l:Lcom/mycompany/app/quick/QuickAdapter$QuickListener;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-interface {p1, v0}, Lcom/mycompany/app/quick/QuickAdapter$QuickListener;->p(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
