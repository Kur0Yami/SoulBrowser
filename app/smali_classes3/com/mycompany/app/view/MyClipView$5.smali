.class Lcom/mycompany/app/view/MyClipView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyClipView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyClipView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyClipView$5;->c:Lcom/mycompany/app/view/MyClipView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyClipView$5;->c:Lcom/mycompany/app/view/MyClipView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mycompany/app/view/MyClipView;->a(Lcom/mycompany/app/view/MyClipView;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyClipView;->q:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-object v1, v0, Lcom/mycompany/app/view/MyClipView;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v1, Lcom/mycompany/app/view/MyClipView$5$1;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyClipView$5$1;-><init>(Lcom/mycompany/app/view/MyClipView$5;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 25
    iput-boolean v1, v0, Lcom/mycompany/app/view/MyClipView;->r:Z

    .line 26
    .line 27
    return-void
.end method
