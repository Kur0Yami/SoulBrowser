.class Lcom/mycompany/app/drag/DragListView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/drag/DragListView$DragScrollProfile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/drag/DragListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/fragment/FragmentDragView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/fragment/FragmentDragView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/drag/DragListView$1;->a:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView$1;->a:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 2
    .line 3
    iget v0, v0, Lcom/mycompany/app/drag/DragListView;->N:F

    .line 4
    .line 5
    mul-float/2addr v0, p1

    .line 6
    return v0
.end method
