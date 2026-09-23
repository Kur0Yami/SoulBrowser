.class Lcom/mycompany/app/main/MainTxtView$46;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainTxtView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTxtView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/main/MainTxtView$46;->a:Lcom/mycompany/app/main/MainTxtView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView$46;->a:Lcom/mycompany/app/main/MainTxtView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainTxtView;->L1:Lcom/mycompany/app/main/MainTxtAdapter;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainTxtAdapter;->w(Landroid/view/ScaleGestureDetector;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    sput p1, Lcom/mycompany/app/pref/PrefRead;->m:I

    .line 14
    .line 15
    return v1
.end method
