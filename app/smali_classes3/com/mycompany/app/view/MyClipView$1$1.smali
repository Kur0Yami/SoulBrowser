.class Lcom/mycompany/app/view/MyClipView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyClipView$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyClipView$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyClipView$1$1;->c:Lcom/mycompany/app/view/MyClipView$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyClipView$1$1;->c:Lcom/mycompany/app/view/MyClipView$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/view/MyClipView$1;->c:Lcom/mycompany/app/view/MyClipView;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/view/MyClipView;->s:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Lcom/mycompany/app/view/MyClipView;->a(Lcom/mycompany/app/view/MyClipView;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance v1, Lcom/mycompany/app/view/MyClipView$1$1$1;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyClipView$1$1$1;-><init>(Lcom/mycompany/app/view/MyClipView$1$1;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method
