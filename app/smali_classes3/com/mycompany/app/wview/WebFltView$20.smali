.class Lcom/mycompany/app/wview/WebFltView$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/wview/WebFltView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/wview/WebFltView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/wview/WebFltView$20;->c:Lcom/mycompany/app/wview/WebFltView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView$20;->c:Lcom/mycompany/app/wview/WebFltView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/wview/WebFltView;->T:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/wview/WebFltView;->g:Lcom/mycompany/app/wview/WebFltView$FltViewListener;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget v2, v0, Lcom/mycompany/app/wview/WebFltView;->y:I

    .line 13
    .line 14
    invoke-interface {v1, v0, v2}, Lcom/mycompany/app/wview/WebFltView$FltViewListener;->a(Landroid/view/View;I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method
