.class Lcom/mycompany/app/view/MyTabFrame$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/view/MyTabFrame;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyTabFrame;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyTabFrame;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyTabFrame$14;->c:Lcom/mycompany/app/view/MyTabFrame;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/view/MyTabFrame$14;->c:Lcom/mycompany/app/view/MyTabFrame;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/view/MyTabFrame;->E:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p1, Lcom/mycompany/app/view/MyTabFrame;->G:Landroid/view/View$OnLongClickListener;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 14
    .line 15
    .line 16
    iput-boolean v1, p1, Lcom/mycompany/app/view/MyTabFrame;->E:Z

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyTabFrame;->k()V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_1
    :goto_0
    return v1
.end method
