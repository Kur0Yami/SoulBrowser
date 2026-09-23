.class Lcom/mycompany/app/view/MyClipView$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyClipView$5;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyClipView$5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyClipView$5$1;->c:Lcom/mycompany/app/view/MyClipView$5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyClipView$5$1;->c:Lcom/mycompany/app/view/MyClipView$5;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/view/MyClipView$5;->c:Lcom/mycompany/app/view/MyClipView;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyClipView;->q:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/view/MyClipView;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v2, v0, Lcom/mycompany/app/view/MyClipView;->t:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    iput-boolean v1, v0, Lcom/mycompany/app/view/MyClipView;->r:Z

    .line 20
    .line 21
    return-void
.end method
