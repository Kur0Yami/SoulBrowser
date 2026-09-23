.class Lcom/mycompany/app/main/MainListAdapter$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListAdapter$5;->c:Lcom/mycompany/app/main/MainListAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainListAdapter$5;->c:Lcom/mycompany/app/main/MainListAdapter;

    .line 2
    .line 3
    iget-boolean p1, p1, Lcom/mycompany/app/main/MainListAdapter;->q:Z

    .line 4
    .line 5
    xor-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    return p1
.end method
