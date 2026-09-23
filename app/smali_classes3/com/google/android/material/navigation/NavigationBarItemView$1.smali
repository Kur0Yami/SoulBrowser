.class Lcom/google/android/material/navigation/NavigationBarItemView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Lcom/google/android/material/navigation/NavigationBarItemView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/navigation/NavigationBarItemView;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView$1;->f:Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/material/navigation/NavigationBarItemView$1;->c:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView$1;->f:Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView$1;->c:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->j(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
